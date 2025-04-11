.class Lio/reactivex/internal/schedulers/SchedulerWhen$ImmediateAction;
.super Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;
.source "SourceFile"


# instance fields
.field private final action:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$ImmediateAction;->action:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public callActual(Leb/r;Leb/b;)Lio/reactivex/disposables/b;
    .locals 2

    new-instance v0, Lr3/l;

    iget-object p0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$ImmediateAction;->action:Ljava/lang/Runnable;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0, p2}, Lr3/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Leb/r;->b(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    move-result-object p0

    return-object p0
.end method
