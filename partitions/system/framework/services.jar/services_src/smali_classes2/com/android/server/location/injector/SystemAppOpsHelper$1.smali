.class public Lcom/android/server/location/injector/SystemAppOpsHelper$1;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "SystemAppOpsHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemAppOpsHelper;


# direct methods
.method public static synthetic $r8$lambda$j_G6d3-GpoSH2ttbbZ-8MJyERbk(Lcom/android/server/location/injector/SystemAppOpsHelper$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemAppOpsHelper$1;->lambda$onOpChanged$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/injector/SystemAppOpsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$1;->this$0:Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onOpChanged$0(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$1;->this$0:Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/AppOpsHelper;->notifyMockLocationAppOpChanged(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/injector/SystemAppOpsHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/location/injector/SystemAppOpsHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemAppOpsHelper$1;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
