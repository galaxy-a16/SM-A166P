.class public final synthetic Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/ActivityStarter;->$r8$lambda$DnLxj9a9uwPc_rKzdBQltJh05bA(IIILcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
