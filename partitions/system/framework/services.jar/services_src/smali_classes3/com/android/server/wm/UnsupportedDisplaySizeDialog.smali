.class public Lcom/android/server/wm/UnsupportedDisplaySizeDialog;
.super Lcom/android/server/wm/AppWarnings$BaseDialog;
.source "UnsupportedDisplaySizeDialog.java"


# direct methods
.method public static synthetic $r8$lambda$u_8vup99tDJZcRwbUdHhAMhFR9k(Lcom/android/server/wm/UnsupportedDisplaySizeDialog;Lcom/android/server/wm/AppWarnings;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->lambda$new$0(Lcom/android/server/wm/AppWarnings;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    .line 34
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;-><init>(Lcom/android/server/wm/AppWarnings;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x447a0000    # 1000.0f

    const/4 v2, 0x5

    .line 37
    invoke-virtual {p3, v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p3

    const v0, 0x1040e76

    .line 41
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x104000a

    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 46
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x10901d2

    .line 47
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 48
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 51
    invoke-virtual {p2}, Landroid/app/AlertDialog;->create()V

    .line 53
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x7d2

    .line 54
    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 57
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const-string p3, "UnsupportedDisplaySizeDialog"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    const p3, 0x1020202

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    const/4 p3, 0x1

    .line 60
    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    new-instance p3, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/UnsupportedDisplaySizeDialog;Lcom/android/server/wm/AppWarnings;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/wm/AppWarnings;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    const/4 p2, 0x1

    xor-int/2addr p3, p2

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(Ljava/lang/String;IZ)V

    return-void
.end method
