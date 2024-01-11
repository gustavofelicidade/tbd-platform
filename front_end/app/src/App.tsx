import { memo } from 'react';
import type { FC } from 'react';

import classes from './App.module.css';
import resets from './components/_resets.module.css';
import { WepApp1LandingPage } from './components/WepApp1LandingPage/WepApp1LandingPage';
import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom';
import Register from './components/Register/Register';
interface Props {
  className?: string;
}
export const App: FC<Props> = memo(function App(props = {}) {
  return (
    <div className={`${resets.storybrainResets} ${classes.root}`}>
      <Router>
        <Routes>
          <Route path="/" element={<WepApp1LandingPage />} />
          <Route path="/Register" element={<Register />} />
        </Routes>
      </Router>
    </div>
  );
});
