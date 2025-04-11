.class Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;
.super Ljava/lang/Object;
.source "AuditLogService.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isNeedToRunCreateAdmins()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public storageManagerGetVolumes()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
