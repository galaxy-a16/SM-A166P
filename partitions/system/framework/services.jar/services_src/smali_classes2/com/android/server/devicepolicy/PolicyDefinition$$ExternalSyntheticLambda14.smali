.class public final synthetic Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuadFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Landroid/content/Context;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p4, Landroid/app/admin/PolicyKey;

    invoke-static {p1, p2, p0, p4}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->setUserRestriction(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
