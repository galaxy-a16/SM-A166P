.class public Lcom/android/server/wm/DeprecatedAbiDialog;
.super Lcom/android/server/wm/AppWarnings$BaseDialog;
.source "DeprecatedAbiDialog.java"


# direct methods
.method public static synthetic $r8$lambda$dt1elsTyjQVJP3AN1ZBUyt8apFM(Lcom/android/server/wm/DeprecatedAbiDialog;Lcom/android/server/wm/AppWarnings;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DeprecatedAbiDialog;->lambda$new$0(Lcom/android/server/wm/AppWarnings;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    .line 32
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x447a0000    # 1000.0f

    const/4 v2, 0x5

    .line 35
    invoke-virtual {p3, v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p3

    const v0, 0x1040418

    .line 39
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/android/server/wm/DeprecatedAbiDialog$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/DeprecatedAbiDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DeprecatedAbiDialog;Lcom/android/server/wm/AppWarnings;)V

    const p1, 0x104000a

    .line 42
    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 50
    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7d2

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    .line 56
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const-string p1, "DeprecatedAbiDialog"

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/wm/AppWarnings;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    const/16 p2, 0x8

    const/4 p3, 0x1

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(Ljava/lang/String;IZ)V

    return-void
.end method
