.class public Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "ScreenRotation.java"


# instance fields
.field public mAccelerometerRotationUri:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAccelerometerRotationUri(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mAccelerometerRotationUri:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrotateScreen(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->rotateScreen()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    return-void
.end method

.method public static createAction(Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;
    .locals 1

    .line 47
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getStringResId()I
    .locals 1

    .line 0
    const v0, 0x1040126

    return v0
.end method


# virtual methods
.method public final getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 120
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    if-eqz p0, :cond_1

    .line 121
    new-instance p0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030128

    invoke-direct {p0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p1, p0

    :cond_1
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final initDialog()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040e37

    .line 95
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040290

    .line 96
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)V

    const v2, 0x1040e41

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)V

    const/high16 p0, 0x1040000

    .line 105
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8e8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 113
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 114
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final isAutoRotateScreen()Z
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 78
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    const-string v0, "accelerometer_rotation_second"

    .line 84
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mAccelerometerRotationUri:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v0, "accelerometer_rotation"

    .line 86
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mAccelerometerRotationUri:Ljava/lang/String;

    .line 89
    :goto_2
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mAccelerometerRotationUri:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    invoke-static {v0, v3, v2, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1
.end method

.method public performCornerAction(I)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->isAutoRotateScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->initDialog()V

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->rotateScreen()V

    return-void
.end method

.method public final rotateScreen()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    const-string/jumbo v2, "user_rotation"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    .line 71
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    invoke-static {v0, v2, v3, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
