.class public final Lcom/android/server/pm/KnownPackages;
.super Ljava/lang/Object;
.source "KnownPackages.java"


# instance fields
.field public final mAmbientContextDetectionPackage:Ljava/lang/String;

.field public final mAppPredictionServicePackage:Ljava/lang/String;

.field public final mCompanionPackage:Ljava/lang/String;

.field public final mConfiguratorPackage:Ljava/lang/String;

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDefaultTextClassifierPackage:Ljava/lang/String;

.field public final mIncidentReportApproverPackage:Ljava/lang/String;

.field public final mOverlayConfigSignaturePackage:Ljava/lang/String;

.field public final mRecentsPackage:Ljava/lang/String;

.field public final mRequiredInstallerPackage:Ljava/lang/String;

.field public final mRequiredPermissionControllerPackage:Ljava/lang/String;

.field public final mRequiredUninstallerPackage:Ljava/lang/String;

.field public final mRequiredVerifierPackages:[Ljava/lang/String;

.field public final mRetailDemoPackage:Ljava/lang/String;

.field public final mSetupWizardPackage:Ljava/lang/String;

.field public final mSystemTextClassifierPackageName:Ljava/lang/String;

.field public final mWearableSensingPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRequiredInstallerPackage:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRequiredUninstallerPackage:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mSetupWizardPackage:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRequiredVerifierPackages:[Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mDefaultTextClassifierPackage:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mSystemTextClassifierPackageName:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mConfiguratorPackage:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mIncidentReportApproverPackage:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mAmbientContextDetectionPackage:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mWearableSensingPackage:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mAppPredictionServicePackage:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mCompanionPackage:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRecentsPackage:Ljava/lang/String;

    return-void
.end method

.method public static knownPackageToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "Wearable sensing"

    return-object p0

    :pswitch_1
    const-string p0, "Ambient Context Detection"

    return-object p0

    :pswitch_2
    const-string p0, "Recents"

    return-object p0

    :pswitch_3
    const-string p0, "Retail Demo"

    return-object p0

    :pswitch_4
    const-string p0, "Companion"

    return-object p0

    :pswitch_5
    const-string p0, "Wi-Fi"

    return-object p0

    :pswitch_6
    const-string p0, "Overlay Config Signature"

    return-object p0

    :pswitch_7
    const-string p0, "App Predictor"

    return-object p0

    :pswitch_8
    const-string p0, "Incident Report Approver"

    return-object p0

    :pswitch_9
    const-string p0, "Configurator"

    return-object p0

    :pswitch_a
    const-string p0, "Documenter"

    return-object p0

    :pswitch_b
    const-string p0, "Wellbeing"

    return-object p0

    :pswitch_c
    const-string p0, "Permission Controller"

    return-object p0

    :pswitch_d
    const-string p0, "System Text Classifier"

    return-object p0

    :pswitch_e
    const-string p0, "Browser"

    return-object p0

    :pswitch_f
    const-string p0, "Verifier"

    return-object p0

    :pswitch_10
    const-string p0, "Uninstaller"

    return-object p0

    :pswitch_11
    const-string p0, "Installer"

    return-object p0

    :pswitch_12
    const-string p0, "Setup Wizard"

    return-object p0

    :pswitch_13
    const-string p0, "System"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;
    .locals 1

    const-class v0, Ljava/lang/String;

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mWearableSensingPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mAmbientContextDetectionPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRecentsPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mCompanionPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mAppPredictionServicePackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mIncidentReportApproverPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mConfiguratorPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    iget-object p2, p0, Lcom/android/server/pm/KnownPackages;->mDefaultTextClassifierPackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mSystemTextClassifierPackageName:Ljava/lang/String;

    filled-new-array {p2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredVerifierPackages:[Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_e
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredUninstallerPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredInstallerPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mSetupWizardPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11
    const-string p0, "android"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
