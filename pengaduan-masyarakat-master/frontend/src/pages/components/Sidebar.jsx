import { Link } from "react-router-dom";

export default function Sidebar(props) {
    return (
        <>
            <header
                className="navbar sticky-top bg-dasar flex-md-nowrap p-1 shadow" 
                data-bs-theme="dark"
            >
                <Link
                    className="navbar text-decoration-none fw-bold col-md-3 me-0 px-3 fs-5 text-white"
                    href="/"
                >
                    Pengaduan Masyarakat 
                </Link>

                <ul className="navbar-nav flex-row d-md-none">
                    <li className="nav-item text-nowrap">
                        <button
                            className="nav-link px-3 text-black"
                            type="button"
                            data-bs-toggle="offcanvas"
                            data-bs-target="#sidebarMenu"
                            aria-controls="sidebarMenu"
                            aria-expanded="false"
                            aria-label="Toggle navigation"
                        >
                            <i className="bi bi-list fs-3"></i>
                        </button>
                    </li>
                </ul>

                <div id="navbarSearch" className="navbar-search w-100 collapse">
                    <input
                        className="form-control w-100 rounded-0 border-0"
                        type="text"
                        placeholder="Search"
                        aria-label="Search"
                    />
                </div>
            </header>

            <div className="container-fluid">
                <div className="row">
                    <div className="sidebar col-md-3 col-lg-2 p-0 bg-green">
                        <div
                            className="offcanvas-md offcanvas-end bg-green"
                            tabIndex="-1"
                            id="sidebarMenu"
                            aria-labelledby="sidebarMenuLabel"
                        >
                            <div className="offcanvas-header">
                                <h5
                                    className="offcanvas-title" 
                                    id="sidebarMenuLabel"
                                >
                                </h5>
                                <div
                                style={{ cursor:"pointer" }}
                                    className="bi bi-x-lg fs-5"
                                    data-bs-dismiss="offcanvas"
                                    data-bs-target="#sidebarMenu"
                                    aria-label="Close"
                                ></div>
                            </div>
                            
                            <div className="offcanvas-body d-md-flex flex-column p-0 pt-lg-3 overflow-y-auto">
                                <ul className="nav flex-column">
                                    <li className="nav-item">
                                        <Link
                                            className={`nav-link d-flex gap-2 ` }
                                            aria-current="page"
                                            to="/beranda"
                                        >
                                            <img width="18" height="18" src="https://img.icons8.com/ios/50/1A1A1A/performance-macbook.png" alt="performance-macbook"/>
                                            Dashboard
                                        </Link>
                                    </li>
                                    <li className="nav-item">
                                        <Link
                                            className={`nav-link d-flex gap-2 ${ window.location.href.includes("masyarakat") ? "text-black" : undefined }`}
                                            to="/masyarakat"
                                        >
                                          <img width="22" height="22" src="https://img.icons8.com/sf-regular/48/1A1A1A/bookmark.png" alt="bookmark"/>
                                            Masyarakat
                                        </Link>
                                    </li>
                                    <li className="nav-item">
                                        <Link
                                            className={`nav-link d-flex gap-2 ${ window.location.href.includes("pengaduan") ? "text-black" : undefined }`}
                                            href="#"
                                            to="/pengaduan"
                                        >
                                          <img width="20" height="20" src="https://img.icons8.com/windows/32/1A1A1A/bookmark-book--v2.png" alt="bookmark-book--v2"/>
                                            Pengaduan
                                        </Link>
                                    </li>
                                    <li className="nav-item">
                                        <Link
                                            className={`nav-link d-flex gap-2 ${ window.location.href.includes("petugas") ? "text-black" : undefined }`}
                                            to="/petugas"
                                        >
                                          <img width="22" height="22" src="https://img.icons8.com/sf-regular/48/1A1A1A/employee-card.png" alt="employee-card"/>
                                            Petugas
                                        </Link>
                                    </li>
                                    <li className="nav-item">
                                        <Link
                                            className={`nav-link d-flex gap-2 ${ window.location.href.includes("tanggapan") ? "text-black" : undefined }`}
                                            to="/tanggapan"
                                        >
                                         <img width="22" height="22" src="https://img.icons8.com/sf-regular/48/1A1A1A/tied-hands.png" alt="tied-hands"/>
                                            Tanggapan
                                        </Link>
                                    </li>
                                </ul>

                                <hr className="my-3" />
                                
                                <ul className="nav flex-column mb-auto">
                                    <li className="nav-item">
                                        <Link
                                            className="nav-link d-flex gap-2"
                                            href="/logout"
                                        >
                                           <img width="22" height="22" src="https://img.icons8.com/sf-regular/48/1A1A1A/logout-rounded-left.png" alt="logout-rounded-left"/>
                                            Logout
                                        </Link>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <main className={`col-md-9 text-dark ms-sm-auto col-lg-10 px-md-4 mt-3 ${props.className}`} style={{ marginBottom:"500px" }} >
                        {props.children}
                    </main>
                </div>
            </div>
        </>
    );
}