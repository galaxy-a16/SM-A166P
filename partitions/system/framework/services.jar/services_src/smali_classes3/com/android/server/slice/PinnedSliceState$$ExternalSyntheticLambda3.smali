.class public final synthetic Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/slice/PinnedSliceState;

.field public final synthetic f$1:[Landroid/app/slice/SliceSpec;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/PinnedSliceState;[Landroid/app/slice/SliceSpec;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/slice/PinnedSliceState;

    iput-object p2, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;->f$1:[Landroid/app/slice/SliceSpec;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/slice/PinnedSliceState;

    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda3;->f$1:[Landroid/app/slice/SliceSpec;

    check-cast p1, Landroid/app/slice/SliceSpec;

    invoke-static {v0, p0, p1}, Lcom/android/server/slice/PinnedSliceState;->$r8$lambda$odQbsKcBpfxo6wZ0iZ-FHkW5JhE(Lcom/android/server/slice/PinnedSliceState;[Landroid/app/slice/SliceSpec;Landroid/app/slice/SliceSpec;)Landroid/app/slice/SliceSpec;

    move-result-object p0

    return-object p0
.end method
