.class public Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;
.super Ljava/lang/Object;
.source "CloudConfigurationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$2;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mtryRegister(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V

    return-void
.end method
