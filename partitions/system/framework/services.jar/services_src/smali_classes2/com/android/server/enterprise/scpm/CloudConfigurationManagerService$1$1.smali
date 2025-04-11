.class public Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1$1;
.super Ljava/lang/Object;
.source "CloudConfigurationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1$1;->this$1:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1$1;->this$1:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;

    iget-object v0, v0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$fputmScpmToken(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1$1;->this$1:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;

    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mtryRegister(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V

    return-void
.end method
