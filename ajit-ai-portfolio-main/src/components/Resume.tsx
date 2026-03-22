import React, { useState } from 'react';
import { motion } from 'motion/react';
import { clsx, type ClassValue } from 'clsx';
import { twMerge } from 'tailwind-merge';

function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

const education = [
  {
    title: "Master's degree",
    institution: 'University of Bedfordshire',
    period: '2023 - 2024',
    description: 'Computer and Information Sciences and Support Services. Focused on advanced software systems and cloud infrastructure.',
  },
  {
    title: 'Bachelor of Computer Application',
    institution: 'Kurukshetra University',
    period: '2017 - 2020',
    description: 'Computer Science. Foundation in programming, databases, and application development.',
  },
];

const experience = [
  {
    title: 'Flutter Developer',
    company: 'YUV',
    period: 'Mar 2025 - Feb 2026',
    description: 'Leading mobile development initiatives in London, focus on high-performance retail and user experience apps.',
  },
  {
    title: 'Technical Lead',
    company: 'PinnTag Ltd',
    period: 'Oct 2023 - Feb 2025',
    description: 'Managing remote teams and architecting complex Flutter solutions with Azure integration.',
  },
  {
    title: 'Technical Lead',
    company: 'OnGraph Technologies Limited',
    period: 'Jun 2021 - Aug 2023',
    description: 'End-to-end management of large-scale Flutter projects, mentoring junior developers and ensuring code quality.',
  },
  {
    title: 'Software Engineer Grade I (Flutter)',
    company: 'InfoStride',
    period: 'Sep 2020 - Jun 2021',
    description: 'Primary contributor to multi-platform Flutter apps with a focus on clean architecture and performance.',
  },
  {
    title: 'Software Engineer',
    company: 'FlyingGrids Solutions',
    period: 'Mar 2019 - Sep 2020',
    description: 'Developed and maintained mobile applications using Flutter and native technologies.',
  },
];

const certificates = [
  {
    title: 'Flutter - Intermediate',
    institution: 'Udemy',
    period: '2022',
    description: 'Advanced state management, custom animations, and complex UI patterns.',
  },
  {
    title: 'Learn Flutter and Dart to create Android and IOS apps',
    institution: 'Udemy',
    period: '2021',
    description: 'Comprehensive mobile development with Flutter framework.',
  },
  {
    title: 'The Complete Flutter and Dart Guide',
    institution: 'Udemy',
    period: '2020',
    description: 'Mastering the Dart language and Flutter widgets.',
  },
  {
    title: 'Windows Command Line & Batch Script Management',
    institution: 'Udemy',
    period: '2020',
    description: 'Automation and script management for development workflows.',
  },
];

const achievements = [
  {
    title: 'Top Rated Plus',
    company: 'Upwork',
    period: '2023 - Present',
    description: 'Maintained 100% Job Success Score. Top Rated Plus badge holder, a distinction achieved by only the top 2% of freelancers globally.',
  },
  {
    title: 'Node of the Year 2022',
    company: 'OnGraph Technologies',
    period: '2022',
    description: "Awarded 'Node of the Year' for outstanding performance, technical excellence, and dedication to project success.",
  },
];

const skills = [
  { name: 'Flutter & Dart', level: 98 },
  { name: 'State Management (Riverpod/Bloc)', level: 95 },
  { name: 'Technical Leadership', level: 92 },
  { name: 'CI/CD & DevOps', level: 85 },
  { name: 'Firebase', level: 90 },
  { name: 'Microsoft Azure', level: 80 },
];

export default function Resume() {
  const [activeTab, setActiveTab] = useState<'education' | 'experience' | 'certificates' | 'achievements' | 'skills'>('experience');

  return (
    <section id="resume" className="py-24 px-4 md:px-8 bg-white border-t border-gray-100">
      <div className="max-w-7xl mx-auto">
        <div className="text-center mb-16">
          <span className="text-sm font-medium text-rose-600 uppercase tracking-[0.2em] mb-4 block">
            7+ years of experience
          </span>
          <h2 className="text-4xl md:text-5xl font-bold text-gray-900">My Resume</h2>
        </div>

        {/* Tabs */}
        <div className="flex flex-wrap justify-center gap-4 mb-16">
          {['education', 'experience', 'certificates', 'achievements', 'skills'].map((tab) => (
            <button
              key={tab}
              onClick={() => setActiveTab(tab as any)}
              className={cn(
                'px-10 py-4 rounded-xl font-bold text-sm uppercase tracking-widest transition-all shadow-xl',
                activeTab === tab 
                  ? 'bg-rose-600 text-white' 
                  : 'bg-white text-gray-600 hover:bg-gray-50'
              )}
            >
              {tab}
            </button>
          ))}
        </div>

        <div className="grid md:grid-cols-2 gap-12">
          {activeTab === 'skills' ? (
            <div className="col-span-2 grid md:grid-cols-2 gap-12">
              {skills.map((skill, index) => (
                <div key={index} className="space-y-4">
                  <div className="flex justify-between items-end">
                    <span className="text-sm font-bold text-gray-700 uppercase tracking-widest">{skill.name}</span>
                    <span className="text-sm text-gray-500">{skill.level}%</span>
                  </div>
                  <div className="h-3 bg-gray-100 rounded-full overflow-hidden">
                    <motion.div
                      initial={{ width: 0 }}
                      whileInView={{ width: `${skill.level}%` }}
                      viewport={{ once: true }}
                      transition={{ duration: 1, delay: index * 0.1 }}
                      className="h-full bg-rose-600 rounded-full"
                    />
                  </div>
                </div>
              ))}
            </div>
          ) : (
            <>
              {/* Left Column */}
              <div className="space-y-12">
                <div className="mb-8">
                  <span className="text-sm font-medium text-rose-600 uppercase tracking-widest mb-4 block">
                    {activeTab === 'education' ? '2017 - 2024' : activeTab === 'experience' ? '2019 - 2023' : activeTab === 'certificates' ? '2020 - 2022' : '2022 - 2025'}
                  </span>
                  <h3 className="text-3xl font-bold text-gray-900">
                    {activeTab === 'education' ? 'Education Quality' : activeTab === 'experience' ? 'Job Experience' : activeTab === 'certificates' ? 'Certifications' : 'Professional Awards'}
                  </h3>
                </div>
                <div className="relative border-l-2 border-gray-100 pl-8 space-y-12">
                  {(activeTab === 'education' 
                    ? education 
                    : activeTab === 'experience' 
                      ? experience.slice(1) 
                      : activeTab === 'certificates'
                        ? certificates.slice(0, 2)
                        : [achievements[0]]
                  ).map((item, index) => (
                    <motion.div
                      key={index}
                      initial={{ opacity: 0, x: -20 }}
                      whileInView={{ opacity: 1, x: 0 }}
                      viewport={{ once: true }}
                      transition={{ delay: index * 0.1 }}
                      className="relative group p-10 rounded-2xl bg-white shadow-xl hover:bg-rose-600 transition-all duration-300"
                    >
                      <div className="absolute -left-[41px] top-10 w-4 h-4 rounded-full bg-gray-200 border-4 border-white group-hover:bg-rose-600 transition-colors" />
                      <div className="flex flex-wrap justify-between items-start gap-4 mb-6">
                        <div>
                          <h4 className="text-2xl font-bold text-gray-900 group-hover:text-white transition-colors">{item.title}</h4>
                          <p className="text-gray-500 group-hover:text-white/80 transition-colors">
                            {'institution' in item ? item.institution : item.company}
                          </p>
                        </div>
                        <span className="px-4 py-1 rounded-lg bg-white text-rose-600 text-xs font-bold shadow-md group-hover:bg-white/10 group-hover:text-white transition-all">
                          {item.period}
                        </span>
                      </div>
                      <p className="text-gray-600 group-hover:text-white/80 leading-relaxed transition-colors">
                        {item.description}
                      </p>
                    </motion.div>
                  ))}
                </div>
              </div>

              {/* Right Column */}
              <div className="space-y-12">
                <div className="mb-8">
                  <span className="text-sm font-medium text-rose-600 uppercase tracking-widest mb-4 block">
                    {activeTab === 'education' ? 'Awards' : activeTab === 'experience' ? '2023 - Present' : activeTab === 'certificates' ? 'Additional' : 'Corporate Awards'}
                  </span>
                  <h3 className="text-3xl font-bold text-gray-900">
                    {activeTab === 'education' ? 'Achievements' : activeTab === 'experience' ? 'Current Role' : activeTab === 'certificates' ? 'Expertise' : 'Performance Awards'}
                  </h3>
                </div>
                <div className="relative border-l-2 border-gray-100 pl-8 space-y-12">
                  {(activeTab === 'education' 
                    ? [] 
                    : activeTab === 'experience' 
                      ? [experience[0]] 
                      : activeTab === 'certificates'
                        ? certificates.slice(2)
                        : [achievements[1]]
                  ).map((item, index) => (
                    <motion.div
                      key={index}
                      initial={{ opacity: 0, x: -20 }}
                      whileInView={{ opacity: 1, x: 0 }}
                      viewport={{ once: true }}
                      transition={{ delay: index * 0.1 }}
                      className="relative group p-10 rounded-2xl bg-white shadow-xl hover:bg-rose-600 transition-all duration-300"
                    >
                      <div className="absolute -left-[41px] top-10 w-4 h-4 rounded-full bg-gray-200 border-4 border-white group-hover:bg-rose-600 transition-colors" />
                      <div className="flex flex-wrap justify-between items-start gap-4 mb-6">
                        <div>
                          <h4 className="text-2xl font-bold text-gray-900 group-hover:text-white transition-colors">{item.title}</h4>
                          <p className="text-gray-500 group-hover:text-white/80 transition-colors">
                            {'institution' in item ? item.institution : item.company}
                          </p>
                        </div>
                        <span className="px-4 py-1 rounded-lg bg-white text-rose-600 text-xs font-bold shadow-md group-hover:bg-white/10 group-hover:text-white transition-all">
                          {item.period}
                        </span>
                      </div>
                      <p className="text-gray-600 group-hover:text-white/80 leading-relaxed transition-colors">
                        {item.description}
                      </p>
                    </motion.div>
                  ))}
                  {activeTab === 'education' && (
                    <div className="p-10 rounded-2xl bg-gray-50 text-center text-gray-500 italic">
                      More educational achievements coming soon...
                    </div>
                  )}
                </div>
              </div>
            </>
          )}
        </div>
      </div>
    </section>
  );
}
