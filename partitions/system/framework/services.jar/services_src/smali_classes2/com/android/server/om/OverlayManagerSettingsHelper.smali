.class public Lcom/android/server/om/OverlayManagerSettingsHelper;
.super Ljava/lang/Object;
.source "OverlayManagerSettingsHelper.java"


# instance fields
.field public final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettingsHelper;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    return-void
.end method


# virtual methods
.method public getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettingsHelper;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettingsHelper;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p0

    return-object p0
.end method
