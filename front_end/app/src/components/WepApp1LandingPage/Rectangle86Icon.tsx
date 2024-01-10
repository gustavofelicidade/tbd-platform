import { memo, SVGProps } from 'react';

const Rectangle86Icon = (props: SVGProps<SVGSVGElement>) => (
  <svg
    preserveAspectRatio='none'
    viewBox='0 0 1440 858'
    fill='none'
    xmlns='http://www.w3.org/2000/svg'
    xmlnsXlink='http://www.w3.org/1999/xlink'
    {...props}
  >
    <path d='M0 0H1440V858H0V0Z' fill='url(#pattern0)' />
    <defs>
      <pattern id='pattern0' patternContentUnits='objectBoundingBox' width={1} height={1}>
        <use xlinkHref='#image0_426_1346' transform='matrix(0.000520833 0 0 0.000874126 0 -0.0244755)' />
      </pattern>
      <image
        id='image0_426_1346'
        width={1920}
        height={1200}
      />
    </defs>
  </svg>
);
const Memo = memo(Rectangle86Icon);
export { Memo as Rectangle86Icon };