const fn = () => alert('HAMMERTIME');

// window.setTimeout(fn, 5000);

const hammerTime = time => {
    const fn = () => alert(`${time} is hammertime!`);
    window.setTimeout(fn, time);
}

// hammerTime(1000);

