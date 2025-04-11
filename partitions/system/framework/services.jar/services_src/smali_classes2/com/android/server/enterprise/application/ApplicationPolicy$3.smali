.class public Lcom/android/server/enterprise/application/ApplicationPolicy$3;
.super Ljava/lang/Thread;
.source "ApplicationPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic val$uid:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mrefreshWidgetStatus(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mreconcileApplicationsState(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$uid:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mclearApplicationIconDbForUser(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    invoke-static {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mreconcileComponentsState(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    return-void
.end method
