.class public Lcom/android/server/backup/params/RestoreParams;
.super Ljava/lang/Object;
.source "RestoreParams.java"


# instance fields
.field public final backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final filterSet:[Ljava/lang/String;

.field public final isSystemRestore:Z

.field public final listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public final observer:Landroid/app/backup/IRestoreObserver;

.field public final packageInfo:Landroid/content/pm/PackageInfo;

.field public final pmToken:I

.field public final token:J


# direct methods
.method public constructor <init>(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/android/server/backup/params/RestoreParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 150
    iput-object p2, p0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 151
    iput-object p3, p0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 152
    iput-wide p4, p0, Lcom/android/server/backup/params/RestoreParams;->token:J

    .line 153
    iput-object p6, p0, Lcom/android/server/backup/params/RestoreParams;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 154
    iput p7, p0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    .line 155
    iput-boolean p8, p0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    .line 156
    iput-object p9, p0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    .line 157
    iput-object p10, p0, Lcom/android/server/backup/params/RestoreParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 158
    iput-object p11, p0, Lcom/android/server/backup/params/RestoreParams;->backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-void
.end method

.method public static createForRestoreAll(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/params/RestoreParams;
    .locals 13

    .line 100
    new-instance v12, Lcom/android/server/backup/params/RestoreParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-object v12
.end method

.method public static createForRestoreAtInstall(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;ILcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/params/RestoreParams;
    .locals 13

    .line 76
    filled-new-array/range {p5 .. p5}, [Ljava/lang/String;

    move-result-object v9

    .line 77
    new-instance v12, Lcom/android/server/backup/params/RestoreParams;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-object v12
.end method

.method public static createForRestorePackages(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;ZLcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/params/RestoreParams;
    .locals 13

    .line 125
    new-instance v12, Lcom/android/server/backup/params/RestoreParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v8, p6

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-object v12
.end method

.method public static createForSinglePackage(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/params/RestoreParams;
    .locals 13

    .line 51
    new-instance v12, Lcom/android/server/backup/params/RestoreParams;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-object v12
.end method
