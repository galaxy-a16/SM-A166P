.class public final synthetic Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyRemapper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyRemapper;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyRemapper;

    iput p2, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyRemapper;

    iget p0, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/input/KeyRemapper;->$r8$lambda$sJXqCZdrAyfLFM8k9UE_5mzU20o(Lcom/android/server/input/KeyRemapper;ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
