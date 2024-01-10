import { memo, SVGProps } from 'react';

const Rectangle1Icon = (props: SVGProps<SVGSVGElement>) => (
  <svg preserveAspectRatio='none' viewBox='0 0 308 81' fill='none' xmlns='http://www.w3.org/2000/svg' {...props}>
    <path
      d='M0 20C0 8.9543 8.95431 0 20 0H288C299.046 0 308 8.95431 308 20V61C308 72.0457 299.046 81 288 81H20C8.95431 81 0 72.0457 0 61V20Z'
      fill='white'
    />
  </svg>
);
const Memo = memo(Rectangle1Icon);
export { Memo as Rectangle1Icon };
