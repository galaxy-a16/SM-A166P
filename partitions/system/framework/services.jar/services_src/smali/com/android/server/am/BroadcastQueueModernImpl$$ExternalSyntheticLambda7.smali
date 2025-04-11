.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueModernImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueModernImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueModernImpl;->$r8$lambda$EZvetGiyPFSQ7Dv6AGCYMZgLrJo(Lcom/android/server/am/BroadcastQueueModernImpl;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
