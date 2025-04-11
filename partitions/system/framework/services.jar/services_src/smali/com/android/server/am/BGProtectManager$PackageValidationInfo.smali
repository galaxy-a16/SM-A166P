.class public Lcom/android/server/am/BGProtectManager$PackageValidationInfo;
.super Ljava/lang/Object;
.source "BGProtectManager.java"


# instance fields
.field public packageName:Ljava/lang/String;

.field public privateFlagsMask:I

.field public final synthetic this$0:Lcom/android/server/am/BGProtectManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BGProtectManager;Ljava/lang/String;I)V
    .locals 0

    .line 1074
    iput-object p1, p0, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;->this$0:Lcom/android/server/am/BGProtectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    iput-object p2, p0, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;->packageName:Ljava/lang/String;

    .line 1076
    iput p3, p0, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;->privateFlagsMask:I

    return-void
.end method


# virtual methods
.method public validate(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1080
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1083
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget v2, p0, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;->privateFlagsMask:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    return v0

    .line 1086
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/BGProtectManager$PackageValidationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method
