.class public Lcom/android/server/StorageManagerService$PackageInstalledMap;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# instance fields
.field public final external:Z

.field public final id:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-object p2, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    const/4 p1, 0x1

    .line 575
    iput-boolean p1, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Z)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p2, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 570
    iput-boolean p3, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 579
    instance-of v0, p1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    if-eqz v0, :cond_0

    .line 581
    check-cast p1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 583
    iget-object p0, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
