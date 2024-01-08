import { memo, SVGProps } from 'react';

const Rectangle110Icon = (props: SVGProps<SVGSVGElement>) => (
  <svg preserveAspectRatio='none' viewBox='0 0 300 230' fill='none' xmlns='http://www.w3.org/2000/svg' {...props}>
    <path
      d='M0 0H300V210C300 221.046 291.046 230 280 230H20C8.9543 230 0 221.046 0 210V0Z'
      fill='#000080'
      stroke='black'
    />
  </svg>
);
const Memo = memo(Rectangle110Icon);
export { Memo as Rectangle110Icon };
