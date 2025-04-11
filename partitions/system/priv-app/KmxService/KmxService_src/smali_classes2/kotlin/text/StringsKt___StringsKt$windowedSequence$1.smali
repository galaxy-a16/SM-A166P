.class final Lkotlin/text/StringsKt___StringsKt$windowedSequence$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/b;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/text/StringsKt___StringsKt$windowedSequence$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/text/StringsKt___StringsKt$windowedSequence$1;

    invoke-direct {v0}, Lkotlin/text/StringsKt___StringsKt$windowedSequence$1;-><init>()V

    sput-object v0, Lkotlin/text/StringsKt___StringsKt$windowedSequence$1;->INSTANCE:Lkotlin/text/StringsKt___StringsKt$windowedSequence$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lkotlin/text/StringsKt___StringsKt$windowedSequence$1;->invoke(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 2
    const-string p0, "it"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
