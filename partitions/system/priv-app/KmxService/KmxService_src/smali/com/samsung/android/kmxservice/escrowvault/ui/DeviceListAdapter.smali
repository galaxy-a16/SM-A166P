.class public Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mDeviceList:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mSelectedDeviceId:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDeviceView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c001a

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mDeviceList:Ljava/util/ArrayList;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    const p3, 0x7f0900b7

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900b6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getMarketingName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getModelCode()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090110

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    const-string v4, "MM/dd/yyyy"

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getLatestUpdatedTime()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getVerifierType()I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    const v5, 0x7f1200ed

    goto :goto_0

    :cond_2
    if-ne v5, v6, :cond_3

    const v5, 0x7f1200ec

    goto :goto_0

    :cond_3
    const v5, 0x7f1200e6

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0900b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getModelCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/kmxservice/common/productinfo/ProductImageFileUtils;->isImageFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getModelCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/kmxservice/common/productinfo/ProductImageFileUtils;->getImageFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    if-eqz p4, :cond_5

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mSelectedDeviceId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0502d5

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const p0, 0x7f0900c6

    goto :goto_1

    :cond_5
    if-nez p4, :cond_6

    const p0, 0x7f090217

    :goto_1
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const p0, 0x7f090218

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    return-object p2
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getDeviceDataList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mDeviceList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->getDeviceView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getSelectedDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mSelectedDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->getDeviceView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDevicePkiInfo(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->getModelCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->setMarketingName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/ui/DeviceListAdapter;->mSelectedDeviceId:Ljava/lang/String;

    return-void
.end method
