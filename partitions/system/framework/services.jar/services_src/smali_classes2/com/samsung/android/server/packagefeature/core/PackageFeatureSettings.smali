.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;
.super Landroid/database/ContentObserver;
.source "PackageFeatureSettings.java"


# static fields
.field public static final URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;


# instance fields
.field public final mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "package_policy_disabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->updateAllFeaturesDisabled(Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->observe()V

    return-void
.end method


# virtual methods
.method public isAllFeaturesDisabled()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "package_policy_disabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final observe()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "package_policy_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-eqz p2, :cond_1

    sget-object p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mCallback:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;

    invoke-interface {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;->onSettingsChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateAllFeaturesDisabled(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->isAllFeaturesDisabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "package_policy_disabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method
