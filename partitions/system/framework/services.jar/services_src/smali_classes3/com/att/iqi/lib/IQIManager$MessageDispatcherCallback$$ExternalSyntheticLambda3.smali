.class public final synthetic Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;->f$0:Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;

    iput-boolean p2, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;->f$0:Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;

    iget-boolean p0, p0, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback$$ExternalSyntheticLambda3;->f$1:Z

    invoke-static {v0, p0}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;->$r8$lambda$qqz18SHD3R3M1vnmBX0qYLw_XgA(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;Z)V

    return-void
.end method
