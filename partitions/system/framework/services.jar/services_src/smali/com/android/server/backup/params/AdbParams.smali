.class public abstract Lcom/android/server/backup/params/AdbParams;
.super Ljava/lang/Object;
.source "AdbParams.java"


# instance fields
.field public curPassword:Ljava/lang/String;

.field public encryptPassword:Ljava/lang/String;

.field public fd:Landroid/os/ParcelFileDescriptor;

.field public final latch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public observer:Landroid/app/backup/IFullBackupRestoreObserver;

.field public privilegeApp:Z

.field public typeMigration:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    iput-boolean v1, p0, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    return-void
.end method
