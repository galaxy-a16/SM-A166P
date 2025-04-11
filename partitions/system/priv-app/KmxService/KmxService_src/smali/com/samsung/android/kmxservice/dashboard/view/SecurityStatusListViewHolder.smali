.class public Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;
.super Landroidx/recyclerview/widget/n1;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "KMX|SecurityStatusListViewHolder"


# instance fields
.field private isSubHeader:Z

.field private final mActivity:Landroid/app/Activity;

.field private final mCareStatusLayout:Landroid/widget/LinearLayout;

.field private final mDetectedDesc:Landroid/widget/TextView;

.field private final mDetectedTitle:Landroid/widget/TextView;

.field private final mDevOptBtn:Landroid/widget/Button;

.field private final mDeviceImage:Landroid/widget/ImageView;

.field private final mDeviceItemView:Landroid/view/View;

.field private final mMarketingName:Landroid/widget/TextView;

.field private final mMoreDeviceMenu:Landroid/widget/TextView;

.field private final mNoUpdatedDesc:Landroid/widget/TextView;

.field private final mNoUpdatedTitle:Landroid/widget/TextView;

.field private final mOemUnLockDesc:Landroid/widget/TextView;

.field private final mOemUnLockTitle:Landroid/widget/TextView;

.field private final mSecureStatusDesc:Landroid/widget/TextView;

.field private final mSecureStatusIcon:Landroid/widget/ImageView;

.field private final mSecureStatusTitle:Landroid/widget/TextView;

.field private final mSignOutBtn:Landroid/widget/Button;

.field private final mSubHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n1;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    const p2, 0x7f0901f0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDeviceItemView:Landroid/view/View;

    const p2, 0x7f090124

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mMarketingName:Landroid/widget/TextView;

    const p2, 0x7f0900b3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDeviceImage:Landroid/widget/ImageView;

    const p2, 0x7f0901ef

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusIcon:Landroid/widget/ImageView;

    const p2, 0x7f0901ec

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusTitle:Landroid/widget/TextView;

    const p2, 0x7f0901eb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusDesc:Landroid/widget/TextView;

    const p2, 0x7f090074

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mCareStatusLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0900b1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDetectedTitle:Landroid/widget/TextView;

    const p2, 0x7f0900b0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDetectedDesc:Landroid/widget/TextView;

    const p2, 0x7f090049

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mOemUnLockTitle:Landroid/widget/TextView;

    const p2, 0x7f090048

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mOemUnLockDesc:Landroid/widget/TextView;

    const p2, 0x7f090172

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mNoUpdatedTitle:Landroid/widget/TextView;

    const p2, 0x7f090171

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mNoUpdatedDesc:Landroid/widget/TextView;

    const p2, 0x7f09020b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSignOutBtn:Landroid/widget/Button;

    const p2, 0x7f0900b2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDevOptBtn:Landroid/widget/Button;

    const p2, 0x7f09022b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSubHeader:Landroid/widget/TextView;

    const p2, 0x7f09014a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mMoreDeviceMenu:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->lambda$setCareStatusVisibility$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->lambda$openSmartThingsDevice$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;Ljava/lang/String;ZLjava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->lambda$setCareStatusVisibility$0(Ljava/lang/String;ZLjava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->lambda$openSmartThingsDevice$2(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private getDetectedText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "TV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "Tablet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const p1, 0x7f120141

    goto :goto_1

    :pswitch_0
    if-eqz p2, :cond_3

    const p1, 0x7f120144

    goto :goto_1

    :cond_3
    const p1, 0x7f120140

    goto :goto_1

    :pswitch_1
    const p1, 0x7f120143

    goto :goto_1

    :pswitch_2
    if-eqz p2, :cond_4

    const p1, 0x7f120145

    goto :goto_1

    :cond_4
    const p1, 0x7f120142

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b23d57a -> :sswitch_2
        0xa82 -> :sswitch_1
        0x4984d4e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNotUpToDateText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "TV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "Tablet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const p1, 0x7f1200fe

    goto :goto_1

    :pswitch_0
    const p1, 0x7f1200fd

    goto :goto_1

    :pswitch_1
    const p1, 0x7f120100

    goto :goto_1

    :pswitch_2
    const p1, 0x7f1200ff

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b23d57a -> :sswitch_2
        0xa82 -> :sswitch_1
        0x4984d4e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getOemUnlockingText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "Phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const p1, 0x7f1200e1

    goto :goto_0

    :cond_0
    const p1, 0x7f1200df

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f1200e2

    goto :goto_0

    :cond_2
    const p1, 0x7f1200e0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUnlockBootloaderText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "Phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f120147

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    const v0, 0x7f120149

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const v0, 0x7f12014a

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private goToSmartThings(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.smartthings.com/applink?action=plugin_launcher&deviceid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x30000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$openSmartThingsDevice$2(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->goToSmartThings(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$openSmartThingsDevice$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$setCareStatusVisibility$0(Ljava/lang/String;ZLjava/lang/String;Landroid/view/View;)V
    .locals 0

    const-string p4, "L3"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "e289f13f-e57c-e025-2060-e938bc15a23f"

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->openSmartThingsDevice(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->openSamsungAccountDevice(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setCareStatusVisibility$1(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openSamsungAccountDevice(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.samsungaccount.action.OPEN_SASETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    const-string p1, "TV"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "f1gxtygekn"

    const-string v0, "client_id"

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.android.samsungaccount.action.OPEN_SIGNED_IN_DEVICE_SECURITY"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    const/16 p2, 0x64

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.android.samsungaccount.action.OPEN_DEVICE_MAIN_LIST"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    const/16 p2, 0x65

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method private openSmartThingsDevice(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    const-string v1, "com.samsung.android.oneconnect"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->goToSmartThings(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ld/m;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ld/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f120139

    goto :goto_0

    :cond_1
    const v1, 0x7f120138

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Ld/m;->b:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ld/i;

    iput-object v1, v3, Ld/i;->f:Ljava/lang/CharSequence;

    new-instance v1, Lcom/samsung/android/kmxservice/dashboard/view/h;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/h;-><init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;Ljava/lang/String;)V

    check-cast v2, Ld/i;

    iget-object p0, v2, Ld/i;->a:Landroid/content/Context;

    const p1, 0x7f1200e3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v2, Ld/i;->g:Ljava/lang/CharSequence;

    iput-object v1, v2, Ld/i;->h:Landroid/content/DialogInterface$OnClickListener;

    new-instance p0, Lcom/samsung/android/kmxservice/dashboard/view/i;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/dashboard/view/i;-><init>()V

    iget-object p1, v2, Ld/i;->a:Landroid/content/Context;

    const v1, 0x7f12008d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v2, Ld/i;->i:Ljava/lang/CharSequence;

    iput-object p0, v2, Ld/i;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0}, Ld/m;->a()Ld/n;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method

.method private setCareStatusVisibility(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mCareStatusLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDetectedTitle:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDetectedDesc:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDetectedDesc:Landroid/widget/TextView;

    invoke-direct {p0, p1, p7}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->getDetectedText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mNoUpdatedTitle:Landroid/widget/TextView;

    if-eqz p4, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mNoUpdatedDesc:Landroid/widget/TextView;

    if-eqz p4, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-nez p4, :cond_5

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mNoUpdatedDesc:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->getNotUpToDateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mOemUnLockTitle:Landroid/widget/TextView;

    if-eqz p5, :cond_6

    if-eqz p6, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mOemUnLockDesc:Landroid/widget/TextView;

    if-eqz p5, :cond_7

    if-eqz p6, :cond_7

    move v3, v2

    goto :goto_5

    :cond_7
    move v3, v1

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-nez p5, :cond_8

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mOemUnLockTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    const v4, 0x7f120146

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mOemUnLockDesc:Landroid/widget/TextView;

    invoke-direct {p0, p1, p7}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->getUnlockBootloaderText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_8
    if-nez p6, :cond_9

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mOemUnLockTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1200de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mOemUnLockDesc:Landroid/widget/TextView;

    invoke-direct {p0, p1, p7}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->getOemUnlockingText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSignOutBtn:Landroid/widget/Button;

    if-eqz p3, :cond_a

    if-eqz p4, :cond_a

    move p3, v2

    goto :goto_8

    :cond_a
    move p3, v1

    :goto_8
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSignOutBtn:Landroid/widget/Button;

    const-string p4, "L3"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    iget-object p4, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "SmartThings"

    aput-object v3, v0, v1

    const v3, 0x7f12005b

    invoke-virtual {p4, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_9

    :cond_b
    iget-object p4, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    const v0, 0x7f12005d

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    :goto_9
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSignOutBtn:Landroid/widget/Button;

    new-instance p4, Lcom/samsung/android/kmxservice/dashboard/view/j;

    invoke-direct {p4, p0, p2, p7, p1}, Lcom/samsung/android/kmxservice/dashboard/view/j;-><init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDevOptBtn:Landroid/widget/Button;

    if-nez p6, :cond_c

    if-eqz p5, :cond_c

    if-eqz p7, :cond_c

    goto :goto_a

    :cond_c
    move v1, v2

    :goto_a
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDevOptBtn:Landroid/widget/Button;

    new-instance p2, Lcom/samsung/android/kmxservice/dashboard/view/b;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/kmxservice/dashboard/view/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setSecureStatusVisibility(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mCareStatusLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusDesc:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KMX|SecurityStatusListViewHolder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isTabletDevice()Z
    .locals 1

    const-string p0, "ro.build.characteristics"

    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "tablet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public setItemView(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V
    .locals 10

    move-object v8, p0

    move-object v9, p2

    move/from16 v0, p6

    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->isSubHeader:Z

    iget-object v2, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDeviceItemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSubHeader:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mMoreDeviceMenu:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mMarketingName:Landroid/widget/TextView;

    move-object v3, p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->setSecureStatusVisibility(Z)V

    iget-object v0, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusIcon:Landroid/widget/ImageView;

    iget-object v1, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusTitle:Landroid/widget/TextView;

    iget-object v1, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1200fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusDesc:Landroid/widget/TextView;

    iget-object v1, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1200fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move/from16 v3, p8

    move/from16 v4, p7

    move/from16 v5, p9

    move/from16 v6, p10

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->setCareStatusVisibility(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    iget-object v0, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusIcon:Landroid/widget/ImageView;

    iget-object v1, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008c

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move/from16 v3, p8

    move/from16 v4, p7

    move/from16 v5, p9

    move/from16 v6, p10

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->setCareStatusVisibility(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    iget-object v0, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusIcon:Landroid/widget/ImageView;

    iget-object v1, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008b

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->setSecureStatusVisibility(Z)V

    iget-object v0, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusIcon:Landroid/widget/ImageView;

    iget-object v1, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSecureStatusTitle:Landroid/widget/TextView;

    const v1, 0x7f1200d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/samsung/android/kmxservice/common/productinfo/ProductImageFileUtils;->isImageFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDeviceImage:Landroid/widget/ImageView;

    iget-object v1, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/samsung/android/kmxservice/common/productinfo/ProductImageFileUtils;->getImageFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_4
    iget-object v0, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDeviceImage:Landroid/widget/ImageView;

    iget-object v1, v8, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mActivity:Landroid/app/Activity;

    move-object v2, p4

    invoke-static {v1, p4}, Lcom/samsung/android/kmxservice/dashboard/PresetDeviceImageUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method public setMoreDeviceView()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->isSubHeader:Z

    iget-object v1, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mMoreDeviceMenu:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDeviceItemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSubHeader:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setSubHeaderView(I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->isSubHeader:Z

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSubHeader:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mDeviceItemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mMoreDeviceMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->isTabletDevice()Z

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSubHeader:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const p1, 0x7f12013d

    goto :goto_0

    :cond_0
    const p1, 0x7f12013c

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;->mSubHeader:Landroid/widget/TextView;

    const p1, 0x7f1200e5

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
