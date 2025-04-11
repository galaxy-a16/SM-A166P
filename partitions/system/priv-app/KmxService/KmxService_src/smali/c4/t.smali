.class public final synthetic Lc4/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/chip/SeslExpandableContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/SeslExpandableContainer;I)V
    .locals 0

    iput p2, p0, Lc4/t;->a:I

    iput-object p1, p0, Lc4/t;->b:Lcom/google/android/material/chip/SeslExpandableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lc4/t;->a:I

    iget-object p0, p0, Lc4/t;->b:Lcom/google/android/material/chip/SeslExpandableContainer;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->c:Lc4/x;

    iget-boolean p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->e:Z

    invoke-virtual {v0, p0}, Lc4/x;->setExpanded(Z)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->c:Lc4/x;

    iget-boolean p0, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->e:Z

    invoke-virtual {v0, p0}, Lc4/x;->setExpanded(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
