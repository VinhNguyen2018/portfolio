import "bootstrap";
import { scrollMoveNav } from '../components/navbar_scroll';
import { smoothScroll } from '../components/smooth_scroll';
import AOS from 'aos';
import 'aos/dist/aos.css'; // You can also use <link> for styles
// ..
scrollMoveNav();
smoothScroll();
AOS.init();

