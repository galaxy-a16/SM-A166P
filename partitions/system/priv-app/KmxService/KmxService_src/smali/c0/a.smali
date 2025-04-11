.class public final Lc0/a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lc0/l;

.field public final c:I


# direct methods
.method public constructor <init>(ILc0/l;I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Lc0/a;->a:I

    iput-object p2, p0, Lc0/a;->b:Lc0/l;

    iput p3, p0, Lc0/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    iget v1, p0, Lc0/a;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lc0/a;->b:Lc0/l;

    iget-object v0, v0, Lc0/l;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget p0, p0, Lc0/a;->c:I

    invoke-virtual {v0, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    return-void
.end method
