.class public Lcom/android/server/am/ServiceRecord$BindItem;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# instance fields
.field public final caller:Landroid/app/IApplicationThread;

.field public final callingPackage:Ljava/lang/String;

.field public final connection:Landroid/app/IServiceConnection;

.field public flags:J

.field public final instanceName:Ljava/lang/String;

.field public isSdkSandboxService:Z

.field public final resolvedType:Ljava/lang/String;

.field public final sdkSandboxClientAppPackage:Ljava/lang/String;

.field public sdkSandboxClientAppUid:I

.field public final sdkSandboxClientApplicationThread:Landroid/app/IApplicationThread;

.field public final service:Landroid/content/Intent;

.field public final token:Landroid/os/IBinder;

.field public userId:I


# direct methods
.method public constructor <init>(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;ZILjava/lang/String;Landroid/app/IApplicationThread;Ljava/lang/String;I)V
    .locals 0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$BindItem;->caller:Landroid/app/IApplicationThread;

    .line 368
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$BindItem;->token:Landroid/os/IBinder;

    .line 369
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord$BindItem;->service:Landroid/content/Intent;

    .line 370
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord$BindItem;->resolvedType:Ljava/lang/String;

    .line 371
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord$BindItem;->connection:Landroid/app/IServiceConnection;

    .line 372
    iput-wide p6, p0, Lcom/android/server/am/ServiceRecord$BindItem;->flags:J

    .line 373
    iput-object p8, p0, Lcom/android/server/am/ServiceRecord$BindItem;->instanceName:Ljava/lang/String;

    .line 374
    iput-boolean p9, p0, Lcom/android/server/am/ServiceRecord$BindItem;->isSdkSandboxService:Z

    .line 375
    iput p10, p0, Lcom/android/server/am/ServiceRecord$BindItem;->sdkSandboxClientAppUid:I

    .line 376
    iput-object p11, p0, Lcom/android/server/am/ServiceRecord$BindItem;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 377
    iput-object p12, p0, Lcom/android/server/am/ServiceRecord$BindItem;->sdkSandboxClientApplicationThread:Landroid/app/IApplicationThread;

    .line 378
    iput-object p13, p0, Lcom/android/server/am/ServiceRecord$BindItem;->callingPackage:Ljava/lang/String;

    .line 379
    iput p14, p0, Lcom/android/server/am/ServiceRecord$BindItem;->userId:I

    return-void
.end method
