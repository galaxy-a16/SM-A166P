.class public final synthetic Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    invoke-static {p0, p1}, Lcom/android/server/autofill/SessionCommittedEventLogger;->$r8$lambda$EXGxMYfVG8q3fP_q4LxT4hXZ8ls(ILcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;)V

    return-void
.end method
