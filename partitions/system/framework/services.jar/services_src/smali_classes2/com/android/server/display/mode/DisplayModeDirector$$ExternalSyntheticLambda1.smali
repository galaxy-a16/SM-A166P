.class public final synthetic Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Landroid/view/Display$Mode;

    check-cast p2, Landroid/view/Display$Mode;

    invoke-static {p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector;->$r8$lambda$GOkuNfMB9txKqB1v22Kq6Biqta4(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)I

    move-result p0

    return p0
.end method
