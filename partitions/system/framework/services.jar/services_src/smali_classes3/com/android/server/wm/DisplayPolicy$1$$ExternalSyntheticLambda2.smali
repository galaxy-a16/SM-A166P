.class public final synthetic Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DisplayPolicy$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DisplayPolicy$1;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromRight()V

    return-void
.end method
