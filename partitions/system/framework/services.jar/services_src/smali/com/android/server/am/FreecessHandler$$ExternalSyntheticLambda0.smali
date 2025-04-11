.class public final synthetic Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;->f$0:I

    iput-boolean p2, p0, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;->f$0:I

    iget-boolean p0, p0, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/am/FreecessHandler;->$r8$lambda$VMlNHYj5ckIIyDiByWJjZbkbVpc(IZ)V

    return-void
.end method
