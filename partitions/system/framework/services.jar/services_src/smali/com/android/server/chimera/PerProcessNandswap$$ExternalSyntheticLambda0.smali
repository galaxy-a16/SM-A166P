.class public final synthetic Lcom/android/server/chimera/PerProcessNandswap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/chimera/PerProcessNandswap;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/chimera/PerProcessNandswap;->$r8$lambda$wGFHkKjNiVascAxmjjj_5FV3MwU(Lcom/android/server/chimera/PerProcessNandswap;I)[J

    move-result-object p0

    return-object p0
.end method
