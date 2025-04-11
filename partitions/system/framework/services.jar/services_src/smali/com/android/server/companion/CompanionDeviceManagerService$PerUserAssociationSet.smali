.class public Lcom/android/server/companion/CompanionDeviceManagerService$PerUserAssociationSet;
.super Lcom/android/internal/infra/PerUser;
.source "CompanionDeviceManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1640
    invoke-direct {p0}, Lcom/android/internal/infra/PerUser;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService$PerUserAssociationSet-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$PerUserAssociationSet;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(I)Ljava/lang/Object;
    .locals 0

    .line 1640
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$PerUserAssociationSet;->create(I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public create(I)Ljava/util/Set;
    .locals 0

    .line 1643
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method
