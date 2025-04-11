.class public Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;
.super Landroidx/recyclerview/widget/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/j0;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KMX|SecurityStatusListViewAdapter"

.field protected static final VIEW_TYPE_MORE_DEVICE:I = 0x4

.field protected static final VIEW_TYPE_OTHER_DEVICE:I = 0x2

.field protected static final VIEW_TYPE_SUB_HEADER:I = 0x3

.field protected static final VIEW_TYPE_THIS_DEVICE:I = 0x1


# instance fields
.field private SecurityStatusList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;",
            ">;"
        }
    .end annotation
.end field

.field private isSupportFooter:Z

.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/j0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->isSupportFooter:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->SecurityStatusList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->getThisDeviceData()Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->lambda$bindViewHolderMoreItemMenu$0(Landroid/view/View;)V

    return-void
.end method

.method private bindViewHolderDeviceList(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;I)V
    .locals 12

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->getDataPosition(I)I

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->SecurityStatusList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n1;->getItemViewType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->getModelCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->getMarketingName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->getTrustLevel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->getSecureStatus()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->isIsSynced()Z

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->isIntegrity()Z

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->isOemLocked()Z

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->isOemDisallowed()Z

    move-result v11

    move-object v1, p1

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->setItemView(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    return-void
.end method

.method private bindViewHolderMoreItemMenu(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->setMoreDeviceView()V

    iget-object p0, p1, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    new-instance p1, Lcom/samsung/android/kmxservice/dashboard/view/g;

    invoke-direct {p1}, Lcom/samsung/android/kmxservice/dashboard/view/g;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindViewHolderSubHeader(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->setSubHeaderView(I)V

    return-void
.end method

.method private getSecurityDataFromFabricInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "on"

    const-string v7, "L1"

    const-string v2, "KMX|SecurityStatusListViewAdapter"

    if-nez p5, :cond_0

    const-string v0, "activated but it\'s never been written."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZZZ)V

    return-object v0

    :cond_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "get static info from SecurityScanner."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->activeScanCurrentDashboardInfo()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object/from16 v3, p6

    :goto_0
    invoke-static {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/ParserDashboardInfo;->parseDashboardInfo(Ljava/lang/String;)Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getSecurityStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getSecurityStatusCause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getTrustLevel()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v6, 0x1

    if-nez v3, :cond_2

    const-string v3, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v12, v6

    move v13, v12

    move v14, v13

    move v15, v14

    goto/16 :goto_9

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "TrustBoot"

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    const-string v7, "Warranty"

    invoke-direct {v0, v4, v7}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_2

    :cond_4
    move v7, v3

    :goto_2
    const-string v8, "ICD"

    invoke-direct {v0, v4, v8}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v5, :cond_5

    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    move v5, v6

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_3
    :try_start_1
    const-string v7, "OemLocked"

    invoke-direct {v0, v4, v7}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v7, :cond_6

    move v7, v6

    goto :goto_4

    :cond_6
    move v7, v3

    :goto_4
    :try_start_2
    const-string v8, "OemDisallowed"

    invoke-direct {v0, v4, v8}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v5, :cond_9

    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    if-eqz p4, :cond_8

    if-nez v0, :cond_a

    :cond_8
    const/4 v6, 0x2

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v6, 0x3

    :cond_a
    :goto_6
    move v15, v0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move v7, v3

    goto :goto_7

    :catch_2
    move-exception v0

    move v5, v3

    move v7, v5

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v15, v3

    :goto_8
    move v13, v5

    move v12, v6

    move v14, v7

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "integrity : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", oemLocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", secureStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;

    move-object v6, v0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZZZ)V

    return-object v0
.end method

.method private getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, ""

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "json getString fail : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", attr : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KMX|SecurityStatusListViewAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isBlank()Z

    move-result p2

    if-nez p2, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private getThisDeviceData()Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;
    .locals 7

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoCache;->getProductInfo(Ljava/lang/String;)Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;->getMarketingName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;->getMarketingName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->getSecurityDataFromFabricInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;

    move-result-object p0

    return-object p0
.end method

.method private isFooter(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->isSupportFooter:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->getItemCount()I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$bindViewHolderMoreItemMenu$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getDataPosition(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, -0x2

    :goto_0
    return p0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->SecurityStatusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->SecurityStatusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->SecurityStatusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->SecurityStatusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    :goto_0
    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->isSupportFooter:Z

    add-int/2addr v0, p0

    return v0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->SecurityStatusList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->isFooter(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    if-eqz p1, :cond_3

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/n1;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->onBindViewHolder(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;I)V
    .locals 2

    .line 2
    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->bindViewHolderMoreItemMenu(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->bindViewHolderSubHeader(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->bindViewHolderDeviceList(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/n1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0070

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    return-object p2
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

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->SecurityStatusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;

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

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->getModelCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;->setMarketingName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j0;->notifyDataSetChanged()V

    return-void
.end method

.method public setMemberInfo(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->getMemberId()Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->getModelCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoCache;->getProductInfo(Ljava/lang/String;)Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;->getMarketingName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;->getMarketingName()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_1

    :cond_0
    move-object v5, v4

    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->getIsSynced()Z

    move-result v7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->getDashboardInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v8, v2, 0x1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->SecurityStatusList:Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->getDashboardInfo()Ljava/lang/String;

    move-result-object v9

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->getSecurityDataFromFabricInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setThisDevice()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->SecurityStatusList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewAdapter;->getThisDeviceData()Lcom/samsung/android/kmxservice/dashboard/model/SecurityStatusData;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
