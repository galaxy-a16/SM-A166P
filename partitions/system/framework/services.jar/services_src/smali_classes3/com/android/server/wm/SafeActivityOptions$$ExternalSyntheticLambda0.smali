.class public final synthetic Lcom/android/server/wm/SafeActivityOptions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/SafeActivityOptions$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/SafeActivityOptions$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {p0, p1}, Lcom/android/server/wm/SafeActivityOptions;->$r8$lambda$K-tqOtS1pmp6QsDs-i4VAqd-Yco(ILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method
