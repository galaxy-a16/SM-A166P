.class public final Lec/k;
.super Lbc/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lec/o;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lec/o;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p2, p0, Lec/k;->e:Lec/o;

    iput-object p3, p0, Lec/k;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lbc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lec/k;->e:Lec/o;

    iget-object v0, v0, Lec/o;->b:Lec/t;

    iget-object v1, v0, Lec/t;->b:Lec/j;

    iget-object p0, p0, Lec/k;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lec/e0;

    invoke-virtual {v1, v0, p0}, Lec/j;->a(Lec/t;Lec/e0;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
