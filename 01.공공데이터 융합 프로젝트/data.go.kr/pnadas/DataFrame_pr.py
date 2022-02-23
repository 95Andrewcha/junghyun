import pandas as pd

data={
    '이름' : ['박찬성', '최형아', '박다경'],
    '역할' : ['아빠', '엄마', '딸'],
    '나이' : ['35', '34', '1']
}

family_df = pd.DataFrame(data)

print(family_df)