const String dashboardQuery = r'''
  query Dashboard($date: String) {
    dashboard(date: $date) {
      date: Date
      users: Users {
        total: Total
        weekly_new: WeeklyNew
        weekly_change_pct: WeeklyChangePct
        monthly_change_pct: MonthlyChangePct
      }
      products: Products {
        total: Total
        monthly_change_pct: MonthlyChangePct
      }
      grades: Grades {
        total: Total
      }
      total_items: TotalItems
      price_updates: PriceUpdates {
        date: Date
        product_id: ProductID
        product: Product
        grade_id: GradeID
        grade: Grade
        price: Price
        previous_date: PreviousDate
        previous_price: PreviousPrice
        change_delta: ChangeDelta
        change_percent: ChangePercent
      }
    }
  }
''';
