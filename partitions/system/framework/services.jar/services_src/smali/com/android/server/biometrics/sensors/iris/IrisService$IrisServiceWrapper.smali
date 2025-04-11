.class public final Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;
.super Landroid/hardware/iris/IIrisService$Stub;
.source "IrisService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;


# direct methods
.method public static synthetic $r8$lambda$edppNm-yrHpVcWCyU9oWmz8ulUg(Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->lambda$registerAuthenticators$0(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/iris/IrisService;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-direct {p0}, Landroid/hardware/iris/IIrisService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/iris/IrisService;Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/iris/IrisService;)V

    return-void
.end method

.method private synthetic lambda$registerAuthenticators$0(Ljava/util/List;)V
    .locals 5

    const-string v0, "biometric"

    .line 75
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 78
    iget v2, v1, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    .line 79
    iget v1, v1, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorStrength:I

    .line 80
    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    move-result v1

    .line 82
    new-instance v3, Lcom/android/server/biometrics/sensors/iris/IrisAuthenticator;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;->this$0:Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/iris/IrisService;->-$$Nest$fgetmServiceWrapper(Lcom/android/server/biometrics/sensors/iris/IrisService;)Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/server/biometrics/sensors/iris/IrisAuthenticator;-><init>(Landroid/hardware/iris/IIrisService;I)V

    const/4 v4, 0x4

    .line 85
    :try_start_0
    invoke-interface {v0, v2, v4, v1, v3}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception when registering sensorId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IrisService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public registerAuthenticators(Ljava/util/List;)V
    .locals 4

    .line 66
    invoke-super {p0}, Landroid/hardware/iris/IIrisService$Stub;->registerAuthenticators_enforcePermission()V

    .line 68
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "IrisService"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 70
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    new-instance v0, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
