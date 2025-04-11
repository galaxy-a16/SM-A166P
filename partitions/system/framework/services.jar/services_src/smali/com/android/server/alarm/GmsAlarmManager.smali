.class public Lcom/android/server/alarm/GmsAlarmManager;
.super Ljava/lang/Object;
.source "GmsAlarmManager.java"


# static fields
.field public static DEBUG_SCPM:Z

.field public static final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field public static sHandlerThread:Landroid/os/HandlerThread;

.field public static sb:Ljava/lang/StringBuilder;


# instance fields
.field public final SCPM_URI_GNET:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field public avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

.field public cm:Landroid/net/ConnectivityManager;

.field public isCharging:Z

.field public isChinaMode:Z

.field public isGmsNetWorkLimt:Z

.field public isHongKongMode:Z

.field public isSetupWizardCompleteOrBootComplete:Z

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

.field public mBatteryChargingReceiver:Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;

.field public mBigdataEnable:Z

.field public mCheckinServerUrl:Ljava/util/ArrayList;

.field public mConfigupdaterUid:I

.field public mContext:Landroid/content/Context;

.field public mCurrentIpList:Ljava/util/ArrayList;

.field public mGmsPkgAppid:I

.field public mGmsPkgUid:I

.field public mGmsUidOfMultiUser:Ljava/util/ArrayList;

.field public mGoogleNetWork:Z

.field public mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

.field public mInsertLogIntent:Landroid/content/Intent;

.field public mInsertLogPendingIntent:Landroid/app/PendingIntent;

.field public mIntent:Landroid/content/Intent;

.field public mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mNetworkInfo:Landroid/net/NetworkInfo;

.field public mNetworkReceiver:Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;

.field public mNetworkService:Landroid/os/INetworkManagementService;

.field public mObserver:Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mPolicyControlSwitch:I

.field public mSCPMReceiver:Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;

.field public mScreenOffChange:Z

.field public mScreenOn:Z

.field public mScreenReceiver:Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;

.field public mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

.field public mTimeoutcount:I

.field public mTimeoutcountDef:I

.field public mUserAddRemoveReceiver:Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;

.field public mUserEnable:Z

.field public mVendingUid:I

.field public mWaitCheckNetWork:Z

.field public noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

.field public vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;


# direct methods
.method public static bridge synthetic -$$Nest$fgetavaStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetisCharging(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisChinaMode(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisHongKongMode(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigupdaterUid(Lcom/android/server/alarm/GmsAlarmManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentIpList(Lcom/android/server/alarm/GmsAlarmManager;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGmsPkgUid(Lcom/android/server/alarm/GmsAlarmManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;)Landroid/net/NetworkInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOffChange(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserEnable(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVendingUid(Lcom/android/server/alarm/GmsAlarmManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWaitCheckNetWork(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetnoAvaStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetvpnStats(Lcom/android/server/alarm/GmsAlarmManager;)Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputisCharging(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisGmsNetWorkLimt(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisSetupWizardCompleteOrBootComplete(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmGoogleNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNetworkInfo(Lcom/android/server/alarm/GmsAlarmManager;Landroid/net/NetworkInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOffChange(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWaitCheckNetWork(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbigData(Lcom/android/server/alarm/GmsAlarmManager;J)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager;->bigData(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcancelAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->cancelAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckActiveNet(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->checkActiveNet()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckGoogleNetwork(Lcom/android/server/alarm/GmsAlarmManager;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->checkGoogleNetwork(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckOnceMultiUserid(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->checkOnceMultiUserid()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisableMultiUserGmsRestriction(Lcom/android/server/alarm/GmsAlarmManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->disableMultiUserGmsRestriction(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menableMultiUserGmsRestriction(Lcom/android/server/alarm/GmsAlarmManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->enableMultiUserGmsRestriction(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforceWakeLockBlackListReset(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->forceWakeLockBlackListReset()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSettingsValueFromDB(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getSettingsValueFromDB()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minsertLog(Lcom/android/server/alarm/GmsAlarmManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/alarm/GmsAlarmManager;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misChnSim(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isChnSim()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misChnSimOrNoSim(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isChnSimOrNoSim()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misWifiConnected(Lcom/android/server/alarm/GmsAlarmManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isWifiConnected()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrestoreGcmAlarm(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->restoreGcmAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager;->sendCheckNetWorkDelay(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendInsertLogDelay(Lcom/android/server/alarm/GmsAlarmManager;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager;->sendInsertLogDelay(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendIntentToIBS(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->sendIntentToIBS(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetGMSLocationProviderChangeReceiverState(Lcom/android/server/alarm/GmsAlarmManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetGmsNetWorkAllow(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->setGmsNetWorkAllow(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetGmsNetWorkForceReset(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->setGmsNetWorkForceReset()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWakeLockBlackListEnableDisable(Lcom/android/server/alarm/GmsAlarmManager;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->setWakeLockBlackListEnableDisable(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSCPMParametersFromDB(Lcom/android/server/alarm/GmsAlarmManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->updateSCPMParametersFromDB()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.samsung.android.sm/settings"

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 123
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GmsAlarmManager"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    .line 151
    sput-boolean v2, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    .line 78
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    .line 79
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    .line 80
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    const/4 v2, 0x0

    .line 91
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 92
    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    .line 94
    iput v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 95
    iput v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    .line 113
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    .line 114
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 115
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogIntent:Landroid/content/Intent;

    .line 116
    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    .line 126
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBigdataEnable:Z

    const/4 v0, 0x7

    .line 135
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    const-string v0, "content://com.samsung.android.sm.policy/policy_item/gmsnet"

    .line 154
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    .line 155
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 297
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/GmsAlarmManager$1;-><init>(Lcom/android/server/alarm/GmsAlarmManager;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    .line 170
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isChn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isHongkong()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    :try_start_0
    const-string v0, "com.google.android.gms"

    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const-string v0, "com.android.vending"

    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    const-string v0, "com.google.android.configupdater"

    .line 179
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    .line 180
    iget p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NameNotFoundException"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GmsAlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final bigData(J)Ljava/lang/String;
    .locals 5

    .line 1318
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 1319
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1320
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"GMST\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->-$$Nest$fgetmTime(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"GMSC\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {v3}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->-$$Nest$fgetmCount(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 1324
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"NGMST\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {v3}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->-$$Nest$fgetmTime(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"NGMSC\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {v3}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->-$$Nest$fgetmCount(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 1327
    sget-object p1, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\"VPNT\":\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {v0}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->-$$Nest$fgetmTime(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    sget-object p1, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\"VPNC\":\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->-$$Nest$fgetmCount(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    sget-object p0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    sget-object p0, Lcom/android/server/alarm/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final cancelAlarm()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    .line 293
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public final checkActiveNet()Z
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 1060
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    .line 1061
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "networkInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final checkGoogleNetwork(Ljava/lang/String;)I
    .locals 2

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGoogleNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isVPNConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    iput v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    .line 925
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->checkGoogleNetworkByAll(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 928
    :cond_0
    iput v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 930
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->checkGoogleNetworkByDefault(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final checkGoogleNetworkByAll(Ljava/lang/String;)I
    .locals 11

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGoogleNetworkByAll addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 943
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    .line 944
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 946
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_a

    .line 947
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_a

    move v5, v3

    move v6, v4

    .line 950
    :goto_0
    array-length v7, v2

    if-ge v5, v7, :cond_3

    .line 951
    iget-object v7, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    aget-object v8, v2, v5

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 953
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    :cond_1
    const/16 v7, 0x11

    if-ne v6, v7, :cond_2

    .line 956
    aget-object v7, v2, v5

    invoke-virtual {v0, v3, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 958
    :cond_2
    aget-object v7, v2, v5

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 962
    :cond_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v5, v4

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Network;

    .line 963
    iget-object v7, p0, Lcom/android/server/alarm/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 965
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkGoogleNetworkByAll networkInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_4
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v6, v7}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_5

    .line 971
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_5

    :cond_5
    move-object v2, v6

    :goto_3
    const/16 v6, 0xbb8

    .line 973
    :try_start_2
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 974
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 975
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v6, "HEAD"

    .line 976
    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 978
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    if-eq v5, v4, :cond_6

    .line 980
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkGoogleNetworkByAll responseCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x9d0b

    .line 981
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(II)I

    .line 982
    iput v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 991
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return v5

    :cond_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception v6

    move-object v10, v6

    move-object v6, v2

    move-object v2, v10

    .line 988
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v6, :cond_7

    goto :goto_6

    :catch_3
    move-exception v6

    move-object v10, v6

    move-object v6, v2

    move-object v2, v10

    .line 986
    :goto_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_7

    .line 991
    :goto_6
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move-object v2, v6

    goto/16 :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v6

    :goto_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 993
    :cond_8
    throw p0

    :cond_9
    move v4, v5

    .line 999
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isVPNConnected()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1000
    iget p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    .line 1001
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGoogleNetworkByAll timeout count: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    const/4 v1, 0x5

    if-ge p1, v1, :cond_b

    .line 1003
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 1005
    :cond_b
    iput v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    goto :goto_8

    .line 1008
    :cond_c
    iput v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcount:I

    :goto_8
    return v4
.end method

.method public final checkGoogleNetworkByDefault(Ljava/lang/String;)I
    .locals 6

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGoogleNetworkByDefault addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1020
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xbb8

    .line 1022
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1023
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1024
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "HEAD"

    .line 1025
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 1027
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 1028
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkGoogleNetworkByDefault: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x9d0b

    .line 1029
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1030
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1049
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return v2

    :catch_0
    move-exception p0

    move-object v2, p1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 1046
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 1049
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    .line 1033
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isVPNConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1035
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    .line 1036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkGoogleNetworkByDefault timeout count default: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 1038
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 1040
    :cond_0
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I

    goto :goto_2

    .line 1043
    :cond_1
    iput v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mTimeoutcountDef:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz p1, :cond_2

    .line 1049
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_3
    const/4 p0, -0x1

    return p0

    :catchall_1
    move-exception p0

    move-object v2, p1

    :goto_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1051
    :cond_3
    throw p0
.end method

.method public final checkOnceMultiUserid()V
    .locals 6

    .line 724
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 725
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 726
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 727
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 728
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GmsAlarmManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-le v3, v2, :cond_0

    if-eqz v3, :cond_0

    .line 731
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x9

    .line 732
    iput v4, v2, Landroid/os/Message;->what:I

    .line 733
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 734
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final disableMultiUserGmsRestriction(I)V
    .locals 5

    const-string v0, "GmsAlarmManager"

    .line 804
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->updateMultiUserGmsUid(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 805
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 806
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 807
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    .line 814
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-nez v1, :cond_2

    goto :goto_2

    .line 818
    :cond_2
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_3

    .line 819
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 824
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 825
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 826
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1, v4}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 831
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception p0

    .line 829
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public doDump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "  <GmsAlarmManager>"

    .line 1543
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isChinaMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHongKongMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGmsPkgUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVendingUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mVendingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConfigupdaterUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1550
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiUidList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1553
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWaitCheckNetWork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGoogleNetWork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isGmsNetWorkLimt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOffChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCharging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPolicyControlSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1561
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager;->dumpNetStats(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1562
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCheckinServerUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final dumpNetStats(J)Ljava/lang/String;
    .locals 3

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Since last 24 hours\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Total time and # of event Google access is available   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Total time and # of event Google access is not possible : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Total time and # of event VPN is connected :"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final enableMultiUserGmsRestriction(I)V
    .locals 5

    const-string v0, "GmsAlarmManager"

    .line 836
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->updateMultiUserGmsUid(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 837
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 838
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 839
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 842
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-nez v1, :cond_2

    goto :goto_2

    .line 845
    :cond_2
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_3

    .line 846
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 852
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 853
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 854
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1, v4}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 859
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception p0

    .line 857
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public final forceWakeLockBlackListReset()V
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 709
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-eqz v1, :cond_0

    .line 710
    iget p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    :cond_0
    return-void
.end method

.method public final getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 1106
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1108
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1111
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1115
    throw p0
.end method

.method public final getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "network_management"

    .line 865
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 870
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method public final getSCPMPolicyItemFromDB()V
    .locals 11

    const-string v0, "category"

    const-string v1, "data1"

    const-string/jumbo v2, "item"

    .line 1484
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "getSCPMPolicyItemFromDB!!"

    const-string v1, "GmsAlarmManager"

    .line 1486
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    .line 1495
    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 1496
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1497
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 1498
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 1499
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "checkin_addr"

    .line 1500
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, " ,scpm url: data1 = "

    if-eqz v8, :cond_1

    const-string/jumbo v8, "whitelist"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1502
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    sget-boolean v2, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v2, :cond_0

    .line 1504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSCPMPolicyItemFromDB category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v8, "switch"

    .line 1505
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1506
    sget-boolean v8, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v8, :cond_2

    .line 1507
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " item = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " switch category = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v8, -0x1

    sparse-switch v5, :sswitch_data_0

    :goto_2
    move v2, v8

    goto :goto_3

    :sswitch_0
    const-string v2, "alarm_restriction"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v6

    goto :goto_3

    :sswitch_1
    const-string/jumbo v2, "wakelock_restriction"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_3

    :sswitch_2
    const-string/jumbo v5, "network_restriction"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    const-string/jumbo v3, "true"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 1510
    :pswitch_0
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1511
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_1

    .line 1513
    :cond_6
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_1

    .line 1524
    :pswitch_1
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1525
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_1

    .line 1527
    :cond_7
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_1

    .line 1517
    :pswitch_2
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1518
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_1

    .line 1520
    :cond_8
    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    goto/16 :goto_1

    .line 1536
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_a
    const-string p0, "getSCPMPolicyItemFromDB error, no database!!"

    .line 1538
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0xe15f73b -> :sswitch_2
        0x3cdd985c -> :sswitch_1
        0x6677fade -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSettingsValueFromDB()V
    .locals 10

    const-string v0, "GmsAlarmManager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1157
    :try_start_0
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/alarm/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const-string/jumbo v3, "key"

    aput-object v3, v6, v2

    const-string/jumbo v3, "value"

    aput-object v3, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with contentResolver : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 1165
    :cond_0
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1166
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :try_start_1
    const-string/jumbo v5, "spcm_switch"

    .line 1169
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1170
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    move v4, v2

    .line 1171
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get from smartmanager DB, spcm_switch : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-boolean v5, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    if-eq v5, v4, :cond_0

    .line 1176
    iput-boolean v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    .line 1177
    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 1181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with parseInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1185
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public final hasValidItemFromDB()Z
    .locals 9

    const-string v0, "category"

    const-string v1, "data1"

    const-string/jumbo v2, "item"

    .line 1452
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "hasValidItemFromDB!!"

    const-string v1, "GmsAlarmManager"

    .line 1454
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1463
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1464
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1465
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 1466
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "checkin_addr"

    .line 1467
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "whitelist"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1469
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    move v2, v3

    .line 1474
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    const-string p0, "hasValidItemFromDB error, no database!!"

    .line 1476
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2
.end method

.method public init(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 5

    .line 190
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 191
    sget-object v0, Lcom/android/server/alarm/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 192
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    sget-object v1, Lcom/android/server/alarm/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 193
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    .line 194
    :cond_1
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

    .line 195
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    const-string v0, "checkin.gstatic.com"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->initNetworkReceiver()V

    .line 197
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->initScreenReceiver()V

    .line 198
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->initUserAddRemoveReceiver()V

    .line 199
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->initSetupWizardCompleteOrBootCompleteReceiver()V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->initSCPMReceiver()V

    .line 201
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->initBatteryChargingReceiver()V

    .line 202
    const-class p1, Landroid/os/PowerManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManagerInternal;

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 204
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.server.action_check_gms_network"

    .line 205
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.server.action_insert_log"

    .line 206
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 207
    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/alarm/GmsAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 211
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 212
    iput-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isCharging:Z

    .line 214
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    .line 215
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v3, 0x4000000

    invoke-static {v0, v1, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 216
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogIntent:Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    .line 219
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats-IA;)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->avaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 220
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-direct {p1, v0}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats-IA;)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->noAvaStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 221
    new-instance p1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    invoke-direct {p1, v0}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats-IA;)V

    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    :cond_2
    return-void
.end method

.method public final initBatteryChargingReceiver()V
    .locals 2

    .line 265
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBatteryChargingReceiver:Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.CHARGING"

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DISCHARGING"

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBatteryChargingReceiver:Lcom/android/server/alarm/GmsAlarmManager$BatteryChargingReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final initNetworkReceiver()V
    .locals 2

    .line 242
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkReceiver:Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkReceiver:Lcom/android/server/alarm/GmsAlarmManager$NetworkReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final initSCPMReceiver()V
    .locals 2

    .line 227
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSCPMReceiver:Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;

    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "sec.app.policy.UPDATE.gmsnet"

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSCPMReceiver:Lcom/android/server/alarm/GmsAlarmManager$SCPMReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final initScreenReceiver()V
    .locals 2

    .line 234
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenReceiver:Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 237
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenReceiver:Lcom/android/server/alarm/GmsAlarmManager$ScreenReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final initSetupWizardCompleteOrBootCompleteReceiver()V
    .locals 2

    .line 257
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

    .line 258
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/alarm/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final initUserAddRemoveReceiver()V
    .locals 2

    .line 249
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserAddRemoveReceiver:Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;

    .line 250
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserAddRemoveReceiver:Lcom/android/server/alarm/GmsAlarmManager$UserAddRemoveReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1191
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mBigdataEnable:Z

    if-eqz v0, :cond_1

    .line 1192
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    .line 1193
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    .line 1194
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string v1, "extra"

    .line 1196
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 1200
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    .line 1202
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.providers.context"

    .line 1203
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1206
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "app_id = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", feature = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", extra = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GmsAlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final isChn()Z
    .locals 1

    const-string/jumbo p0, "ro.csc.country_code"

    .line 874
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CHINA"

    .line 875
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isChnSim()Z
    .locals 2

    .line 904
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 906
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "8986"

    .line 910
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "8985"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final isChnSimOrNoSim()Z
    .locals 2

    .line 890
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_2

    .line 892
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "8986"

    .line 896
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "8985"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isGmsDelay12HourAlarm(Landroid/app/PendingIntent;)Z
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, "com.google.android.gms"

    .line 328
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    const-string p1, "com.google.android.gms.gcm."

    .line 332
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "com.google.android.intent.action.GCM_RECONNECT"

    .line 333
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isGmsDelay6HourAlarm(Landroid/app/PendingIntent;)Z
    .locals 3

    if-eqz p1, :cond_4

    const-string v0, "com.google.android.gms"

    .line 343
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v2, "CONTEXT_MANAGER_ALARM_WAKEUP_"

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.google.android.gms.common.receiver.LOG_CORE_ANALYTICS"

    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.google.android.gms.matchstick.register_intent_action"

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.google.android.gms.reminders.notification.ACTION_REFRESH_TIME_REMINDERS"

    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.google.android.intent.action.SEND_IDLE"

    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    if-nez p0, :cond_3

    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    .line 356
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.google.android.gms.checkin.EventLogServiceReceiver"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final isHongkong()Z
    .locals 1

    const-string/jumbo p0, "ro.csc.country_code"

    .line 882
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "HONG KONG"

    .line 883
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNeedUpdateSCPMPolicy()Z
    .locals 8

    .line 1426
    sget-boolean v0, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    const-string v1, "GmsAlarmManager"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "isNeedUpdateSCPMPolicy"

    .line 1427
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "policy list is null"

    .line 1432
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1435
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "policyName"

    .line 1436
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "policyVersion"

    .line 1437
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gmsnet"

    .line 1438
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , policyVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1444
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0
.end method

.method public final isSCPMAvailable()Z
    .locals 2

    .line 1416
    sget-boolean v0, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v0, :cond_0

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "isSCPMAvailable"

    .line 1417
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.sm.policy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final isVPNConnected()Z
    .locals 1

    .line 1084
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/16 v0, 0x11

    .line 1085
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1086
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isWifiConnected()Z
    .locals 1

    .line 1074
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 1075
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1076
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public parseHostAndSetUrlFirewallRule(Ljava/lang/String;)V
    .locals 6

    const-string v0, "GmsAlarmManager"

    .line 1335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GMS-CORE] parseHostAndSetUrlFirewallRule host = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    .line 1339
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 1340
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 1341
    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1344
    :cond_0
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1345
    :cond_1
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    .line 1346
    invoke-virtual {p0, v2, v1}, Lcom/android/server/alarm/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    .line 1347
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1348
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1351
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final restoreGcmAlarm()V
    .locals 5

    .line 716
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.intent.action.GCM_RECONNECT"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->getAlarm(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/alarm/Alarm;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 718
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    const/4 v3, 0x5

    .line 719
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 720
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmService:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AlarmManagerService;->addAlarm(Lcom/android/server/alarm/Alarm;)V

    return-void
.end method

.method public schedulingGmsAlarms(Lcom/android/server/alarm/Alarm;)V
    .locals 9

    .line 369
    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_5

    :cond_1
    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    if-nez v1, :cond_2

    goto :goto_1

    .line 375
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/alarm/GmsAlarmManager;->isGmsDelay12HourAlarm(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc

    goto :goto_0

    .line 377
    :cond_3
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/server/alarm/GmsAlarmManager;->isGmsDelay6HourAlarm(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 382
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    if-nez p0, :cond_5

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 384
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v3

    sub-long/2addr v3, v1

    int-to-long v5, v0

    const-wide/32 v7, 0x36ee80

    mul-long/2addr v5, v7

    cmp-long p0, v3, v5

    if-lez p0, :cond_4

    return-void

    :cond_4
    add-long/2addr v1, v5

    const/4 p0, 0x5

    .line 389
    invoke-virtual {p1, p0, v1, v2}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final sendCheckNetWorkDelay(J)V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 p2, 0x2

    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 p1, 0x1

    .line 278
    iput-boolean p1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    :cond_1
    return-void
.end method

.method public final sendInsertLogDelay(J)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p1

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public final sendIntentToIBS(Z)V
    .locals 2

    .line 694
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.server.action_google_net_state"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    .line 695
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 696
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final setGMSLocationProviderChangeReceiverState(I)V
    .locals 3

    .line 1093
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 1095
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1096
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.location.network.LocationProviderChangeReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1097
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string p0, "GmsAlarmManager"

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGMSLocationProviderChangeReceiverState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1100
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final setGmsMultiUserWorkAllow(Z)V
    .locals 5

    const-string v0, "GmsAlarmManager"

    .line 786
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 792
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 793
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 794
    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 799
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 797
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public final setGmsNetWorkAllow(Z)V
    .locals 3

    const-string v0, "GmsAlarmManager"

    .line 762
    iget v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    return-void

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 771
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v1, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 772
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v1, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 773
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v1, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 774
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v1, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 775
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/GmsAlarmManager;->setGmsMultiUserWorkAllow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 779
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 777
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setGmsNetWorkForceReset()V
    .locals 4

    const-string v0, "GmsAlarmManager"

    .line 740
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 746
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-eqz v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 749
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 750
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 751
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 752
    invoke-virtual {p0, v3}, Lcom/android/server/alarm/GmsAlarmManager;->setGmsMultiUserWorkAllow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setUrlFirewallRule(ZLjava/util/ArrayList;)V
    .locals 4

    .line 1358
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    .line 1359
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1363
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "GmsAlarmManager"

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GMS-CORE] setUrlFirewallRule, ip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isDeleteRule = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mGmsPkgUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v1, v2, v0, p1}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleMobileData(ILjava/lang/String;Z)V

    .line 1366
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v1, v2, v0, p1}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleWifi(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1369
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public final setWakeLockBlackListEnableDisable(Z)V
    .locals 1

    .line 700
    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_1

    .line 703
    iget p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgAppid:I

    invoke-virtual {v0, p0, p1}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    :cond_1
    return-void
.end method

.method public final updateMultiUserGmsUid(I)Ljava/util/ArrayList;
    .locals 6

    .line 1374
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1376
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Multi userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GmsAlarmManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    :try_start_0
    const-string v1, "com.google.android.gms"

    const/4 v3, 0x0

    .line 1383
    invoke-virtual {p0, v1, v3, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v1

    const-string v4, "com.android.vending"

    .line 1384
    invoke-virtual {p0, v4, v3, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v4

    const-string v5, "com.google.android.configupdater"

    .line 1385
    invoke-virtual {p0, v5, v3, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p0

    .line 1387
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gmsuid = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vendinguid = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " configupdate = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1394
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameNotFoundException"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final updateSCPMParametersFromDB()V
    .locals 2

    .line 1401
    sget-boolean v0, Lcom/android/server/alarm/GmsAlarmManager;->DEBUG_SCPM:Z

    const-string v1, "GmsAlarmManager"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateSCPMParametersFromDB"

    .line 1402
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isSCPMAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1407
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->hasValidItemFromDB()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1408
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getSCPMPolicyItemFromDB()V

    .line 1409
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "scpm doesn\'t find the Policy name for gmsnet"

    .line 1411
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateSettings()V
    .locals 4

    .line 1130
    iget-boolean v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1131
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mObserver:Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

    .line 1132
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/alarm/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/alarm/GmsAlarmManager;->mObserver:Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1133
    invoke-virtual {p0}, Lcom/android/server/alarm/GmsAlarmManager;->getSettingsValueFromDB()V

    :cond_0
    return-void
.end method
