{
    'targets': [
      {
        'target_name': 'gui',
        'type': 'executable',
        #'msvs_guid': '5ECEC9E5-8F23-47B6-93E0-C3B328B3BE65',
        'include_dirs': [
          '..',
        ],
        "conditions": [
        ["OS=='win'", {
          'sources': [
            'src/main.cc',
           ],
        }],
        ["OS=='linux'", {
          'sources': [
            'src/main-linux.cc',
           ],
        }]
        ]
      },
    ],
  }
