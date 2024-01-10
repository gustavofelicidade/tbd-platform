import { memo, SVGProps } from 'react';

const Rectangle95Icon = (props: SVGProps<SVGSVGElement>) => (
  <svg preserveAspectRatio='none' viewBox='0 0 315 232' fill='none' xmlns='http://www.w3.org/2000/svg' {...props}>
    <path
      d='M0 0H315V212C315 223.046 306.046 232 295 232H20C8.9543 232 0 223.046 0 212V0Z'
      fill='#000080'
      stroke='black'
    />
  </svg>
);
const Memo = memo(Rectangle95Icon);
export { Memo as Rectangle95Icon };
