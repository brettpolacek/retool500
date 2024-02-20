<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  paddingType="normal"
  sticky={true}
  type="header"
>
  <Navigation
    id="navigation1"
    itemMode="static"
    marginType="normal"
    src="https://retool-edge.com/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
  >
    <Option id="94dd3" itemType="app" label="Show Inventory" />
    <Option
      id="8325a"
      appTarget="527da3be-83fa-11ee-b2b4-afb058fbdd0d"
      icon="bold/interface-add-1"
      iconPosition="left"
      itemType="app"
      label="Create Inventory"
    />
  </Navigation>
  <Avatar
    id="avatar1"
    fallback="{{ current_user.fullName }}"
    imageSize={32}
    label="{{ current_user.fullName }}"
    labelCaption="{{ current_user.email }}"
    marginType="normal"
    src="{{ current_user.profilePhotoUrl }}"
    style={{ ordered: [{ background: "automatic" }] }}
  />
</Frame>
