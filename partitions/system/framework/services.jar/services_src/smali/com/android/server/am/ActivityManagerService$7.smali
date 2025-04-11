.class public Lcom/android/server/am/ActivityManagerService$7;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$app:Lcom/android/server/am/ProcessRecord;

.field public final synthetic val$pid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$7;->val$app:Lcom/android/server/am/ProcessRecord;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$7;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$7;->val$app:Lcom/android/server/am/ProcessRecord;

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$7;->val$pid:I

    invoke-static {v0, v1, p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mreportDiedAppPid(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method
