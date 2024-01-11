import React, { useState } from 'react';

const Register = () => {
    const [name, setName] = useState('');
    const [surname, setSurname] = useState('');
    const [email, setEmail] = useState('');
    const [userType, setUserType] = useState('');
    const [businessName, setBusinessName] = useState('');
    const [businessAddress, setBusinessAddress] = useState('');
    const [ceoName, setCeoName] = useState('');
    const [jobTitle, setJobTitle] = useState('');
    const [currentCompany, setCurrentCompany] = useState('');
    const [referral, setReferral] = useState('');

    const handleRegister = () => {
        // Handle registration process
    };

    return (
        <div>
            <h1>Register to Sign up</h1>
            <form onSubmit={handleRegister}>
                <label>
                    Name:
                    <input type="text" value={name} onChange={(e) => setName(e.target.value)} />
                </label>
                <label>
                    Surname:
                    <input type="text" value={surname} onChange={(e) => setSurname(e.target.value)} />
                </label>
                <label>
                    Email Address:
                    <input type="email" value={email} onChange={(e) => setEmail(e.target.value)} />
                </label>
                <label>
                    User Type:
                    <select value={userType} onChange={(e) => setUserType(e.target.value)}>
                        <option value="">Select User Type</option>
                        <option value="business">Business</option>
                        <option value="professional">Professional</option>
                    </select>
                </label>
                {userType === 'business' && (
                    <>
                        <label>
                            Business Name:
                            <input type="text" value={businessName} onChange={(e) => setBusinessName(e.target.value)} />
                        </label>
                        <label>
                            Business Address:
                            <input type="text" value={businessAddress} onChange={(e) => setBusinessAddress(e.target.value)} />
                        </label>
                        <label>
                            CEO/Owner's Full Name:
                            <input type="text" value={ceoName} onChange={(e) => setCeoName(e.target.value)} />
                        </label>
                        <label>
                            <input type="checkbox" /> Confirm sign up on behalf of business
                        </label>
                    </>
                )}
                {userType === 'professional' && (
                    <>
                        <label>
                            Job Title:
                            <input type="text" value={jobTitle} onChange={(e) => setJobTitle(e.target.value)} />
                        </label>
                        <label>
                            Current Company:
                            <input type="text" value={currentCompany} onChange={(e) => setCurrentCompany(e.target.value)} />
                        </label>
                        <label>
                            Referral:
                            <input type="text" value={referral} onChange={(e) => setReferral(e.target.value)} />
                        </label>
                    </>
                )}
                <button type="submit">Register</button>
            </form>
        </div>
    );
};

export default Register;
