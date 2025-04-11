.class public final Lo4/l;
.super Lcom/google/android/material/internal/n;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo4/n;


# direct methods
.method public constructor <init>(Lo4/n;)V
    .locals 0

    iput-object p1, p0, Lo4/l;->a:Lo4/n;

    invoke-direct {p0}, Lcom/google/android/material/internal/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, Lo4/l;->a:Lo4/n;

    invoke-virtual {p0}, Lo4/n;->b()Lo4/o;

    move-result-object p0

    invoke-virtual {p0}, Lo4/o;->a()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, Lo4/l;->a:Lo4/n;

    invoke-virtual {p0}, Lo4/n;->b()Lo4/o;

    move-result-object p0

    invoke-virtual {p0}, Lo4/o;->b()V

    return-void
.end method
