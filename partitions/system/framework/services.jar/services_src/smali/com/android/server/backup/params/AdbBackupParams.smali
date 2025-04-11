.class public Lcom/android/server/backup/params/AdbBackupParams;
.super Lcom/android/server/backup/params/AdbParams;
.source "AdbBackupParams.java"


# instance fields
.field public allApps:Z

.field public backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public doCompress:Z

.field public doWidgets:Z

.field public extraFlag:I

.field public includeApks:Z

.field public includeKeyValue:Z

.field public includeObbs:Z

.field public includeShared:Z

.field public includeSystem:Z

.field public packages:[Ljava/lang/String;

.field public smartswitchBackupPath:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;I[Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/server/backup/params/AdbParams;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/backup/params/AdbParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 44
    iput-boolean p2, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    .line 45
    iput-boolean p3, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    .line 46
    iput-boolean p4, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    .line 47
    iput-boolean p5, p0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    .line 48
    iput-boolean p6, p0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    .line 49
    iput-boolean p7, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    .line 50
    iput-boolean p8, p0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    .line 51
    iput-boolean p9, p0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    .line 52
    iput-object p10, p0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    .line 53
    iput-object p11, p0, Lcom/android/server/backup/params/AdbBackupParams;->backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 55
    iput p12, p0, Lcom/android/server/backup/params/AdbBackupParams;->extraFlag:I

    .line 56
    iput-object p13, p0, Lcom/android/server/backup/params/AdbBackupParams;->smartswitchBackupPath:[Ljava/lang/String;

    return-void
.end method
