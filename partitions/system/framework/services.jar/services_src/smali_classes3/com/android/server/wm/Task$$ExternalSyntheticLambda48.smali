.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriPredicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Lcom/android/modules/utils/TypedXmlSerializer;

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/Task;->$r8$lambda$ILnmJeJmQkcvFO9v-i49rAzqLxE(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/modules/utils/TypedXmlSerializer;)Z

    move-result p0

    return p0
.end method
