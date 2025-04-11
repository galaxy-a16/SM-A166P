.class public Lcom/android/server/ServiceObject;
.super Ljava/lang/Object;
.source "ServiceKeeper.java"


# instance fields
.field public isSterileService:Z

.field public serviceMethods:Ljava/util/Hashtable;

.field public servicePermissions:Lcom/android/server/PermissionPackage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Lcom/android/server/PermissionPackage;

    invoke-direct {v0}, Lcom/android/server/PermissionPackage;-><init>()V

    iput-object v0, p0, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    .line 463
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Lcom/android/server/ServiceObject;->isSterileService:Z

    return-void
.end method
