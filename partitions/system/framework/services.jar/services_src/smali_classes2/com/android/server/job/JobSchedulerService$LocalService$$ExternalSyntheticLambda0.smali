.class public final synthetic Lcom/android/server/job/JobSchedulerService$LocalService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$LocalService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$LocalService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-static {v0, p0, p1}, Lcom/android/server/job/JobSchedulerService$LocalService;->$r8$lambda$suHHX60thzXkwuZDLjHjkflBDj0(Ljava/lang/String;Ljava/util/List;Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
