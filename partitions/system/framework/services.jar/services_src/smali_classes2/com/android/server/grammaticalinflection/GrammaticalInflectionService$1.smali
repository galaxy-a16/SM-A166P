.class public Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$1;
.super Landroid/app/IGrammaticalInflectionManager$Stub;
.source "GrammaticalInflectionService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$1;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-direct {p0}, Landroid/app/IGrammaticalInflectionManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$1;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V

    return-void
.end method
