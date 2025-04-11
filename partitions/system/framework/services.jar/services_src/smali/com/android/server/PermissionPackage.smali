.class public Lcom/android/server/PermissionPackage;
.super Ljava/lang/Object;
.source "ServiceKeeper.java"


# instance fields
.field public agentTypes:Ljava/util/HashSet;

.field public packages:Ljava/util/HashSet;

.field public seinfos:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    .line 476
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    .line 477
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PermissionPackage;->agentTypes:Ljava/util/HashSet;

    return-void
.end method
